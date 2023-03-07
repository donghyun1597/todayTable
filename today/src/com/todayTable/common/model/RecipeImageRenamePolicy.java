package com.todayTable.common.model;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class RecipeImageRenamePolicy implements FileRenamePolicy {
	
	@Override
	public File rename(File originFile) {
		
		//원본파일명("aaa.jpg")
		String originNmae =originFile.getName();
		
		// => 수정 파일명("20230216061254321.jpg")
		//			   파일업로드한시간(년분일시분초) + 5자리랜덤값(10000~99999) +원본파일 확장자
		
		//1. 파일 업로드한 시간(년월일시분초 형태) => (String currentTime)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()); //"20230216121055"
		
		//2.5자리 랜덤값(int ranNum)
		int ranNum = (int)(Math.random() * 90000 + 10000); //23123
		
		//3.원본파일 확장자(String ext)
		String ext = originNmae.substring(originNmae.lastIndexOf(".")); //".png"
		String changeName = currentTime + ranNum +"recipe" + ext;
				
				
		return new File(originFile.getParent(),changeName);
		//원본의 디렉토리를 알아낸 후 변경된 이름으로 저장하는 메소드
	}

}
