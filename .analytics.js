let recentlySent = false
let sendQueue = []

const format_date = (date=new Date()) => {
  return '' + 
    (date.getFullYear()).toString().padStart(4, '0') + '-' + 
    (date.getMonth()+1).toString().padStart(2, '0') + '-' +
    (date.getDate()).toString().padStart(2, '0') + '@' +
    (date.getHours()).toString().padStart(2, '0') + ':' +
    (date.getMinutes()).toString().padStart(2, '0') + ':' +
    (date.getSeconds()).toString().padStart(2, '0')
}

const analyse = (data, send) => {

  if(data.record.path.endsWith('_sidebar.md')) return
  if(!(data.record.path.endsWith('.md') || data.path === '/auth/login')) return

  data.record.username = JSON.parse(Buffer.from(data.record.accessToken.split('.')[1], 'base64').toString()).username

  if(data.record.path.endsWith('.md')) {
    data.category = 'PAGE'
    data.title = data.record.username + ' accessed ' + data.record.path.split('/').reverse()[0] + ' at ' + format_date() + ' (' + Date.now() + ')'
  } else if(data.record.path = '/auth/login') {
    data.category = 'LOGIN'
    data.title = data.record.username + ' logged in at ' + format_date() + ' (' + Date.now() + ')'
  }

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