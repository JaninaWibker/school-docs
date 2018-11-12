let recentlySent = false
let sendQueue = []

const analyse = (data, send) => {
  if(data.path.endsWith('_sidebar.md')) return
  if(!(data.path.endsWith('.md') || data.path === '/auth/login')) return

  if(data.path.endsWith('.md')) data.category = 'page'
  if(data.path = '/auth/login') data.category = 'login'

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

