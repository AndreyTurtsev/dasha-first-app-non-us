import "commonReactions/all.dsl";

context {
    input phone: string;
}

start node root
{
    do
    {
        #connectSafe($phone);
        #waitForSpeech(1000);
        #say("hello");
        wait *;
    }
    transitions
    {
        track_parcel: goto track_parcel on #messageHasIntent("track_parcel");
        missed_delivery: goto missed_delivery on #messageHasIntent("missed_delivery");
        where_is_point: goto where_is_point on #messageHasIntent("where_is_point");
        return_shipment: goto return_shipment on #messageHasIntent("return_shipment");
    }
}
node track_parcel
{
    do
    {
        #repeat();
        exit;
    }
    transitions
    {
    }
}
node missed_delivery
{
    do
    {
        #repeat();
        exit;
    }
    transitions
    {
    }
}
node where_is_point
{
    do
    {
        #say("readiness_to_talk");
        exit;
    }
    transitions
    {
    }
}
node return_shipment
{
    do
    {
        #say("readiness_to_talk");
        exit;
    }
    transitions
    {
    }
}
