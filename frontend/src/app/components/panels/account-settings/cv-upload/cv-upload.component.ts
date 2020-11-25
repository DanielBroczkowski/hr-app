import { FtpService } from './../../../../services/ftp.service';
import { Component, OnInit } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';

@Component({
  selector: 'app-cv-upload',
  templateUrl: './cv-upload.component.html',
  styleUrls: ['./cv-upload.component.scss']
})
export class CvUploadComponent implements OnInit {
  afuConfig = this.ftpService.getAfuConfig();

  constructor(
    private translate: TranslateService,
    private ftpService: FtpService
    ) { }

  ngOnInit() {
  }

}
