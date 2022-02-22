import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsPage extends GetView {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: TextBlack(text:'사설', size: 18, weight: FontWeight.w700,), centerTitle: true,
   actions: [IconButton(onPressed: () {} , icon: const Icon(Icons.comment, color: Colors.white,)),], 
    ),

    body: SafeArea(
       child:    SingleChildScrollView(
    
      child: Container(
        padding: const EdgeInsets.only(top: 12, bottom: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              TextBlack(text: '2022.02.22',),
               const SizedBox(height: 12,),
                TextBlack(text: '재택 치료 7개월 아기, 애타게 병상 찾다 숨지는 기막힌 현실', size: 22, weight: FontWeight.w700),
                const SizedBox(height: 32,),
                 TextBlack(text: '신종 코로나 확진자 폭증으로 재택 치료자가 50만명에 육박한 가운데 재택 치료 중 사망하는 사례가 이어지면서 국민 불안감이 커지고 있다. 21일 0시 기준 새 확진자는 주말 검사량 감소에도 9만5362명을 기록했고 재택 치료 대상자도 46만9384명을 기록하는 등 폭증세다. 이런 가운데에 재택 치료 판정을 받은 뒤 상태가 급변해 병세가 나빠졌는데도 적절한 조치를 받지 못해 사망하는 사례가 속출하고 있는 것이다.\n지난 18일 경기도 수원에서는 코로나 확진 후 재택 치료를 받던 7개월 영아가 고열에 발작 증세를 일으켰지만, 지역 내 병상을 확보하지 못해 다른 도시로 이송 중 숨지는 안타까운 일이 발생했다. 119 구급대는 신고 6분 만에 집에 도착해 이송할 병원을 수소문했지만, 확진자 증가 탓에 빨리 병상을 확보하지 못했다. 결국 10곳이 넘는 병원에 연락한 끝에 인근 도시 대학병원으로 향했지만 병원에 도착했을 때는 이미 숨진 상태였다. 방역 당국은 “병상 문제라기보다는 응급 의료 체계에 가중이 있었던 것”이라고 하지만, 분초를 다투는 상황에서 곧바로 병상을 확보했으면 결과가 달라졌을 수도 있다. 서울 관악구에서는 50대 남성이 지난 19일 재택 치료를 받다 홀로 숨졌다. 확진자가 연락이 닿지 않으면 찾아가 봐야 하는데 그렇게 하지 않은 것이다.\n정부는 현재 중환자 병상이 2600개 이상이어서 여력이 충분하다고 하는데 왜 이런 일이 계속 생기나. 60세 이상 확진자에게 보내준다는 자가 치료 세트를 받지 못한 사람이 부지기수고, 1일 2회 환자 모니터링도 지켜지지 않고 있다.\n문제는 이런 일이 이제 시작일지도 모른다는 점이다. 방역 당국이 21일 전망한 대로 오미크론 대유행이 2월 말이나 3월 중 정점에 달하고 확진자가 하루 최다 14만∼27만명 나오면 어떤 일이 벌어질지 예상하기 어렵다. 현장 의료진이나 간호사 등 필수 인력에서 감염이 속출하는 점도 문제다. 중환자를 돌볼 의료진이 부족해 실제 가용할 수 있는 병상은 훨씬 적을 것이라는 지적도 나오고 있다. 그런데도 정부는 “오미크론 치명률은 약 0.18%로 낮다” “오히려 한 차례 정도 큰 유행을 거치면서 ‘엔데믹’(풍토병으로 굳어진 감염병)으로 전환되는 과정이 필요하다”는 말을 하고 있다. 마치 바이러스가 빨리 퍼지기를 바라는 듯한 어투로, 무책임한 태도다.', size: 17,),
            ])),

          ],
        ),
      ))
     ) );
  }
}