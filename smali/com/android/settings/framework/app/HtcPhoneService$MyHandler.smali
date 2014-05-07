.class Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;
.super Landroid/os/Handler;
.source "HtcPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 394
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    .line 396
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 400
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 554
    :goto_0
    return-void

    .line 406
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 407
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 413
    .local v5, key:Ljava/lang/String;
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 414
    .local v13, result:Ljava/lang/String;
    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->parseResponse(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/settings/framework/app/HtcPhoneService;->access$100(Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->updateLifeStatistics(Landroid/content/Context;)V
    invoke-static {v14}, Lcom/android/settings/framework/app/HtcPhoneService;->access$200(Landroid/content/Context;)V

    goto :goto_0

    .line 423
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v5           #key:Ljava/lang/String;
    .end local v13           #result:Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 424
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 430
    .restart local v5       #key:Ljava/lang/String;
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 431
    .restart local v13       #result:Ljava/lang/String;
    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->parseResponse(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/settings/framework/app/HtcPhoneService;->access$100(Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->updateLifeStatistics2(Landroid/content/Context;)V
    invoke-static {v14}, Lcom/android/settings/framework/app/HtcPhoneService;->access$300(Landroid/content/Context;)V

    goto :goto_0

    .line 444
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v5           #key:Ljava/lang/String;
    .end local v13           #result:Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 445
    .restart local v1       #ar:Landroid/os/AsyncResult;
    const-string v2, "00000400"

    .line 446
    .local v2, command:Ljava/lang/String;
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v14, :cond_0

    .line 447
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_1
    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcPhoneService;->access$500(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_2

    .line 454
    const/16 v14, 0xa

    const/16 v15, 0xc

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 455
    .local v12, naiLength:Ljava/lang/String;
    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 456
    .local v6, len:I
    mul-int/lit8 v14, v6, 0x2

    add-int/lit8 v14, v14, 0xc

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v14, v15, :cond_1

    .line 457
    const/16 v14, 0xc

    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v15, v15, 0xc

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/framework/app/HtcPhoneService;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 476
    .end local v6           #len:I
    .end local v12           #naiLength:Ljava/lang/String;
    .local v11, nai:Ljava/lang/String;
    :goto_2
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 477
    .restart local v5       #key:Ljava/lang/String;
    monitor-enter v5

    .line 479
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    new-instance v4, Landroid/content/Intent;

    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .local v4, intent:Landroid/content/Intent;
    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v15, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_NAI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v15}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    const-string v14, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v4, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 449
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #key:Ljava/lang/String;
    .end local v11           #nai:Ljava/lang/String;
    :cond_0
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 463
    .restart local v6       #len:I
    .restart local v12       #naiLength:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "len ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " command length:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v11, ""

    .restart local v11       #nai:Ljava/lang/String;
    goto :goto_2

    .line 467
    .end local v6           #len:I
    .end local v11           #nai:Ljava/lang/String;
    .end local v12           #naiLength:Ljava/lang/String;
    :cond_2
    const-string v11, ""

    .line 468
    .restart local v11       #nai:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OoO nai (2):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 480
    .restart local v5       #key:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 481
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 483
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 496
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #command:Ljava/lang/String;
    .end local v5           #key:Ljava/lang/String;
    .end local v11           #nai:Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 501
    .restart local v1       #ar:Landroid/os/AsyncResult;
    const/4 v10, 0x0

    .line 503
    .local v10, nERIVersion:Ljava/lang/String;
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v14, :cond_3

    .line 504
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_4
    new-instance v4, Landroid/content/Intent;

    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .restart local v4       #intent:Landroid/content/Intent;
    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v15, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ERI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v15}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    const-string v14, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v4, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 506
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    .restart local v2       #command:Ljava/lang/String;
    const/4 v14, 0x4

    const/4 v15, 0x6

    :try_start_3
    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 513
    .local v8, nCMDType:Ljava/lang/String;
    const/4 v14, 0x6

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 514
    .local v7, nCMDStatus:Ljava/lang/String;
    const/16 v14, 0x18

    const/16 v15, 0x1c

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .line 521
    :goto_5
    const-string v14, "00"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 522
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO Get ERI type ok"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v9, 0x0

    .line 526
    .local v9, nERINumber:I
    const/16 v14, 0x10

    :try_start_4
    invoke-static {v10, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v9

    .line 530
    :goto_6
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 536
    goto :goto_4

    .line 515
    .end local v7           #nCMDStatus:Ljava/lang/String;
    .end local v8           #nCMDType:Ljava/lang/String;
    .end local v9           #nERINumber:I
    :catch_1
    move-exception v3

    .line 516
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, ""

    .line 517
    .restart local v8       #nCMDType:Ljava/lang/String;
    const-string v7, "11"

    .line 518
    .restart local v7       #nCMDStatus:Ljava/lang/String;
    const-string v10, "Not available"

    .line 519
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Get ERI version error!!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 527
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v9       #nERINumber:I
    :catch_2
    move-exception v3

    .line 528
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO Integer.parseInt(nERIVersion, 16)ERROR"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 537
    .end local v3           #e:Ljava/lang/Exception;
    .end local v9           #nERINumber:I
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO Get ERI status unsuccessful"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x384 -> :sswitch_2
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method
