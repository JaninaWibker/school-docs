let recentlySent = false
let sendQueue = []

const analyse = (data, send) => {
  if(recentlySent) {
    sendQueue.push(data)
  } else {
    send([...sendQueue, data])
    sendQueue = []
    recentlySent = true
    setTimeout(() => {
      recentlySent = false
      if(sendQueue.length > 0) {
        send(sendQueue)
        sendQueue = []
      }
    }, 5000)
  }
}

module.exports = analyse

