library

digression i_am_robot
{
    conditions { on #messageHasAnyIntent(digression.i_am_robot.triggers); }
    var triggers = ["are_you_a_robot"];
    var responses: Phrases[] = ["readiness_to_talk"];
    do
    {
        for (var item in digression.i_am_robot.responses)
        {
            #say(item, repeatMode: "ignore");
        }
        #repeat(accuracy: "short");
        return;
    }
    transitions
    {
    }
}
