<%@ page pageEncoding="utf8"%>

<style>
	#amenitiesModal{
		margin-top: 50px;
		margin: 0 auto;
		height:auto;
	}
	
	.modal-dialog.amenities-dialog{
		width:550px;
		height: 100%;
	}
	
	.modal-content.amenities-content{
		height: auto;
		min-height: 100%;
	}
	
	.modal-header.amenities-header{
		border-bottom: 0px !important;
	}
	
	.basicAmenities{
		border-bottom:  1px solid #d6d6d6;
		margin: 20px 0px;
		
	}
	
	.modal-body.amenities-body{
		padding:0 30px;
		height: auto;
	}
</style>

<!-- 모달 팝업 -->
      <div class="modal fade" id="amenitiesModal" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true"
      style="z-index:1000000000">
         <div class="modal-dialog amenities-dialog">
            <div class="modal-content amenities-content">
               <div class="modal-header amenities-header">
                  <button type="button" class="close" data-dismiss="modal">
                     <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                  </button>
               </div>
               <div class="modal-body amenities-body">
               		<h3 style="font-weight: 600;">편의시설</h3>
               		<br>
               		<h4 style="font-weight: 600;">기본 편의시설</h4>
               		<br>
               		<c:forEach items="${amenitiesList }" var="amenitiesList">
               		
               			<c:choose>
               				<c:when test="${amenitiesList eq '필수품목'}">
               					<div class="basicAmenities">
               						<p style="font-size: 18px;">${amenitiesList }</p>
               						<p style="padding-bottom:12px;">수건, 침대시트, 비누, 화장지</p>
               					</div>
               				</c:when>
               				<c:when test="${amenitiesList eq '무선 인터넷'}">
               					<div class="basicAmenities">
               						<p style="font-size: 18px;">${amenitiesList }</p>
               						<p style="padding-bottom:12px;">숙소 내에서 끊김없이 연결</p>
               					</div>
               				</c:when>
               				<c:when test="${amenitiesList eq '난방'}">
               					<div class="basicAmenities">
               						<p style="font-size: 18px;">${amenitiesList }</p>
               						<p style="padding-bottom:12px;">중앙 난방 또는 숙소 내 히터 비치</p>
               					</div>
               				</c:when>
               				<c:when test="${amenitiesList eq '작업공간'}">
               					<div class="basicAmenities">
               						<p style="font-size: 18px;">${amenitiesList }</p>
               						<p style="padding-bottom:12px;">노트북을 놓을 수 있는 책상이나 테이블과 편하게 앉아 일할 수 있는 의자</p>
               					</div>
               				</c:when>
               				<c:when test="${amenitiesList eq '세탁기' || amenitiesList eq '건조기'}">
               					<div class="basicAmenities">
               						<p style="font-size: 18px;">${amenitiesList }</p>
               						<p style="padding-bottom:12px;">건물 내, 유료 또는 무료 이용 가능</p>
               					</div>
               				</c:when>
               				<c:otherwise>
               					<div class="basicAmenities">
               						<p style="font-size: 18px; padding-bottom:12px;">${amenitiesList }</p>
               					</div>
               				</c:otherwise>
               			</c:choose>
               		</c:forEach>
               		<br>
               		<h4 style="font-weight: 600;">사용가능 공간/시설</h4>
               		<br>
               		<c:forEach items="${accessList }" var="accessList">
               			<div class="basicAmenities">
               				<p style="font-size: 18px; padding-bottom:12px;">${accessList }</p>
               			</div>
               		</c:forEach>
               		<br>
               		<h4 style="font-weight: 600;">안전 시설</h4>
               		<br>
               		<c:forEach items="${safetyList }" var="safetyList">
               			<div class="basicAmenities">
               				<p style="font-size: 18px; padding-bottom:12px;">${safetyList }</p>
               			</div>
               		</c:forEach>
               </div>
            </div>
         </div>
      </div>