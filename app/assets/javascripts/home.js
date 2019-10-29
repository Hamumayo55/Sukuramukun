// var cnt=0;

// function upStep()
// {
//     if (cnt<=5){
//         cnt+=1;
//         colorChange(cnt)
//     }else{
//     }
// }

// function downStep()
// {
//     if (cnt>=1){
//         cnt-=1;
//         colorChange(cnt)
//     }else{
//     }
// }

// function colorChange(num){
//     switch(num){
//         case 0 :
//             document.getElementById("color1").classList.value = "stepflow-white";
//                 break

//         case 1 :
//             document.getElementById("color1").classList.value = "stepflow-red";
//             document.getElementById("color2").classList.value = "stepflow-white";
//             document.getElementById("list1").classList.value = "bar-white";
//                 break
//         
//         case 2 :
//             document.getElementById("color1").classList.value = "stepflow-black";
//             document.getElementById("color2").classList.value = "stepflow-red";
//             document.getElementById("color3").classList.value = "stepflow-white";
//             document.getElementById("list1").classList.value = "bar-red";
//             document.getElementById("list2").classList.value = "bar-white";
//                 break
//         case 3 :
//             document.getElementById("color2").classList.value = "stepflow-black";
//             document.getElementById("color3").classList.value = "stepflow-red";
//             document.getElementById("color4").classList.value = "stepflow-white";
//             document.getElementById("list2").classList.value = "bar-red";
//             document.getElementById("list3").classList.value = "bar-white";
//                 break
//         case 4 :
//             document.getElementById("color3").classList.value = "stepflow-black";
//             document.getElementById("color4").classList.value = "stepflow-red";
//             document.getElementById("color5").classList.value = "stepflow-white";
//             document.getElementById("list3").classList.value = "bar-red";
//             document.getElementById("list4").classList.value = "bar-white";
//                 break
//         case 5 :
//             document.getElementById("color4").classList.value = "stepflow-black";
//             document.getElementById("color5").classList.value = "stepflow-red";
//             document.getElementById("list4").classList.value = "bar-red";
//             document.getElementById("list5").classList.value = "bar-white";
//                 break
//         case 6 :
//             document.getElementById("color5").classList.value = "stepflow-black";
//             document.getElementById("list5").classList.value = "bar-red";
//                 break
//     }
// }


// var timer2; //タイマーを格納する変数（タイマーID）の宣言
// var autoMinute = [0,0,0,0,0,0];
// var autoSecond = [1,3,1,3,1,3];
// var minuteData;
// var secondData;
// var index = 0;


// //カウントダウン関数を1000ミリ秒毎に呼び出す関数
// function autoStart()
// {
//     if (index < autoMinute.length){
//         minuteData = autoMinute[index];
//         secondData = autoSecond[index];
//         index += 1;
//         timer2 = setInterval("autoCountDown()",1000);
//     }
// }

// //タイマー停止関数
// function autoStop()
// {
//     clearInterval(timer2);
// }

// //カウントダウン関数
// function autoCountDown()
// {
//     min=minuteData;
//     sec=secondData;

//     if( (min==0) && (sec==0) )
//     {
//         alert("時刻を設定してください！");
//         autoReSet();
//     }
//     else
//     {
//         if (min=="") min=0;
//         min=parseInt(min);

//         if (sec=="") sec=0;
//         sec=parseInt(sec);

//         autoTmWrite(min*60+sec-1);
//     }
// }

// //残り時間を書き出す関数
// function autoTmWrite(int)
// {
//     int=parseInt(int);

//     if (int<=0)
//     {
//         autoReSet();
//     }
//     else
//     {
//         //残り分数はintを60で割って切り捨てる
//         minuteData=Math.floor(int/60);
//         //残り秒数はintを60で割った余り
//         secondData=int % 60;
//     }
// }

// //フォームを初期状態に戻す（リセット）関数
// function autoReSet()
// {
//     clearInterval(timer2);
//     upStep();
//     autoStart()
// }