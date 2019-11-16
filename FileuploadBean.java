package com.Bean;

public class FileuploadBean {

    private String  name,description,filename,filekey,filetype,filesize,decryptionfile,encryptionfile ,ownername;

	 
 
	public String getOwnername() {
		return ownername;
	}

	public void setOwnername(String ownername) {
		this.ownername = ownername;
	} 

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFilekey() {
		return filekey;
	}

	public void setFilekey(String filekey) {
		this.filekey = filekey;
	}

	public String getFiletype() {
		return filetype;
	}

	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}

	public String getFilesize() {
		return filesize;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}

	public String getDecryptionfile() {
		return decryptionfile;
	}

	public void setDecryptionfile(String decryptionfile) {
		this.decryptionfile = decryptionfile;
	}

	public String getEncryptionfile() {
		return encryptionfile;
	}

	public void setEncryptionfile(String encryptionfile) {
		this.encryptionfile = encryptionfile;
	}
}
