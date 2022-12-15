
head(Packet$`Diff(NTP Receive Timestamp - NTP Origin Timestamp)`)
head(Packet)
str(Packet)

plot(Packet$`NTP Reference Timestamp`> 0, Packet$)


reftime <- Packet$`NTP Reference Timestamp` > 0
plot(reftime)
table(reftime)
plot(table(Packet$`NTP Reference Timestamp`))
ls(Packet)

reftime <- Packet[,8 > 0]

class(reftime)
Packet[,Packet$`Packet number`<5]





t1 <- readxl:: read_xlsx('Packet.xlsx')
head(t1)
setwd('C:/Users/willw/OneDrive/Desktop/test')


library(tidyr)
library(dplyr)
class(Packet$`Destination IP First 3 Octets`)



Packet%>%
 select("NTP Receive Timestamp", "NTP Reference Timestamp")%>%
 filter(Packet$`Destination IP First 3 Octets` == "128.105.39.x" )

Packet[,c(1, 7, 8)]

as.integer(Packet$`Destination IP First 3 Octets`)

Packet$`Destination IP First 3 Octets`


str(Packet)









Clean2 <- data.frame(c(server2$`Diff(NTP Receive Timestamp - NTP Origin Timestamp)`))


server2






server2 <-
Packet[Packet$`Destination IP First 3 Octets` == "128.105.39.X", c(13, 4, 12)]

server3 <-
Packet[Packet$`Destination IP First 3 Octets` == "128.105.37.X", c(13, 4, 12)]

server4 <-
Packet[Packet$`Destination IP First 3 Octets` == "128.105.38.X", c(13, 4, 12)]
server2



hist(server2$`Diff(NTP Receive Timestamp - NTP Origin Timestamp)`, xlim = xrange, main = "Client1", xlab = "V2(Received - Origin)", col = "dodgerblue2")
hist(server3$`Diff(NTP Receive Timestamp - NTP Origin Timestamp)`, xlim = xrange, main = "Client2", xlab = "V2(Received - Origin)", col = "dodgerblue2")
hist(server4$`Diff(NTP Receive Timestamp - NTP Origin Timestamp)`, xlim = xrange, main = "Client3", xlab = "V2(Received - Origin)", col = "dodgerblue2")
par(mfrow=c(1,3))

class(Packet)

?hist()


select("NTP Receive Timestamp", "NTP Reference Timestamp")


Packet%>%
 ungroup%>%
 filter("Destination IP First 3 Octets" == "128.105.39.X" )


library(purrr)

now(tzone="Chicago")

?now()


xrange <- range(c(server2$`Diff(NTP Receive Timestamp - NTP Origin Timestamp)`), c(server3$`Diff(NTP Receive Timestamp - NTP Origin Timestamp)`), c(server4$`Diff(NTP Receive Timestamp - NTP Origin Timestamp)`))

xrange
server2v1 <-c()
server3v1 <-c()
server4v1 <-c()


for(i in 2:144) {
 server2v1[i-1] <- server2$`NTP Receive Timestamp`[i] - server2$`NTP Receive Timestamp`[i-1]


}

for(i in 2:82) {
 server3v1[i-1] <- server3$`NTP Receive Timestamp`[i] - server3$`NTP Receive Timestamp`[i-1]


}

length(server4$`NTP Receive Timestamp`)

for(i in 2:107) {
 server4v1[i-1] <- server4$`NTP Receive Timestamp`[i] - server4$`NTP Receive Timestamp`[i-1]


}


hist(server2v1, xlim = xrange2, main = "Client1", xlab = "V1(Received(n) - Received(n-1)) in Seconds", col = "dodgerblue2")
hist(server3v1, xlim = xrange2, main = "Client2", xlab = "V1(Received(n) - Received(n-1)) in Seconds", col = "dodgerblue2")
hist(server4v1, xlim = xrange2, main = "Client3", xlab = "V1(Received(n) - Received(n-1)) in Seconds", col = "dodgerblue2")

server2v1 <- server2v1/1000
server3v1 <- server3v1/1000
server4v1 <- server4v1/1000

xrange2 <- range(c(server2v1), c(server3v1), c(server4v1))
