const { load } = require("nodemon/lib/config");

App ={
    load: async () => {
        // console.log('App.load');
        await App.loadWeb3();
},

}
$(()=>{
 $(window).load(()=>{
        App.load();
 })    
})