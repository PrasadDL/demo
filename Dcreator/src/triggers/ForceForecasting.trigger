trigger ForceForecasting on User (before insert) {

for(User userInLoop:trigger.new)
{
userInLoop.ForecastEnabled=true;
}

}