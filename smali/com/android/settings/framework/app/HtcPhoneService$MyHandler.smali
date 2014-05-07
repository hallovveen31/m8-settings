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

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->parseResponse(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/settings/framework/app/HtcPhoneService;->access$100(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->updateLifeStatistics(Landroid/content/Context;)V
    invoke-static {v14}, Lcom/android/settings/framework/app/HtcPhoneService;->access$200(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->parseResponse(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/settings/framework/app/HtcPhoneService;->access$100(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->updateLifeStatistics2(Landroid/content/Context;)V
    invoke-static {v14}, Lcom/android/settings/framework/app/HtcPhoneService;->access$300(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    const-string v2, "00000400"

    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v14, :cond_0

    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcPhoneService;->access$500(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_2

    const/16 v14, 0xa

    const/16 v15, 0xc

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit8 v14, v6, 0x2

    add-int/lit8 v14, v14, 0xc

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v14, v15, :cond_1

    const/16 v14, 0xc

    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v15, v15, 0xc

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/framework/app/HtcPhoneService;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_2
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v4, Landroid/content/Intent;

    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v15, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_NAI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v15}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v4, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

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

    const-string v11, ""

    goto :goto_2

    :cond_2
    const-string v11, ""

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

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v14

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    :sswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    const/4 v10, 0x0

    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v14, :cond_3

    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    new-instance v4, Landroid/content/Intent;

    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v15, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ERI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v15}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v4, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x4

    const/4 v15, 0x6

    :try_start_3
    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x6

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x18

    const/16 v15, 0x1c

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    :goto_5
    const-string v14, "00"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO Get ERI type ok"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/16 v14, 0x10

    :try_start_4
    invoke-static {v10, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v9

    :goto_6
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :catch_1
    move-exception v3

    const-string v8, ""

    const-string v7, "11"

    const-string v10, "Not available"

    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Get ERI version error!!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v3

    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO Integer.parseInt(nERIVersion, 16)ERROR"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_4
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO Get ERI status unsuccessful"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x384 -> :sswitch_2
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method
