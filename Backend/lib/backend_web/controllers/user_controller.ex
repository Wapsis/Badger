defmodule ApiWeb.UserController do
  use ApiWeb, :controller

  alias Api.{Repo, Workingtime, User}

  def badge(conn, _params) do


    # make a sql query to get the workingtimes for userid = 1
    workingtimes = Repo.all(Api.Workingtime, where: [user_id: 1])

    # get the last workingtime in workingtimes
    last_workingtime = Enum.at(workingtimes, -1)


    most_recent = last_workingtime

    # match most_recent.type , if true set tmp to false else true
    tmp = case most_recent.type do
      true -> false
      false -> true
    end

    user = Repo.get(Api.User, 1)
    time = ~T[23:00:07]
    workingtime = %Workingtime{uid: 1, date: Date.utc_today(), badge_time: time, type: tmp}
    Repo.insert(workingtime)
    send_resp(conn, 200, "OK")
  end


end