// const error = new Error('parameter yg input salah')

// const promise = new Promise()


// const biodata = {
//     name: 'risano',
//     panggilNama: function(nama){
//         console.log(`nama saya adalah ${nama}`)
//     }
// }
// 

// class MyError {
//     constructor(message){
//         this.message = message
//     }
//     message = 'default error'

//     setMessage(message) {
//         this.message = message
//     }
// }


// const msgError = new MyError('salah bro.....')
// // msgError.setMessage('ada salah menggunakan My Error')

// console.log(msgError.message)

const sayHelo = (name)=>()=>{
    console.log(`helo apakabar ${name}`)
}

const aplikasi = sayHelo('risano')

aplikasi()