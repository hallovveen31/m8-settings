.class public Lcom/android/settings/framework/app/HtcPhoneService;
.super Landroid/app/IntentService;
.source "HtcPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcPhoneService$1;,
        Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;,
        Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;,
        Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    }
.end annotation


# static fields
.field private static final CDMA_ERI_INDEX:I = 0x5

.field private static final CDMA_ICC_INDEX:I = 0x4

.field private static final CDMA_IMEI_INDEX:I = 0x6

.field private static final CDMA_IMEI_SV_INDEX:I = 0x7

.field private static final CDMA_LIFE_TIME_TOTAL_CALLS_INDEX:I = 0x8

.field private static final CDMA_LIFE_TIME_TOTAL_DATA_RX_INDEX:I = 0xa

.field private static final CDMA_LIFE_TIME_TOTAL_DATA_TX_INDEX:I = 0xb

.field private static final CDMA_LIFE_TIME_TOTAL_MINS_INDEX:I = 0x9

.field private static final CDMA_MEID_INDEX:I = 0xc

.field private static final CDMA_NAI_INDEX:I = 0x1

.field private static final CDMA_PRI_INDEX:I = 0x2

.field private static final CDMA_PRL_INDEX:I = 0x3

.field private static final DM_NVI_ID_DATACALL:Ljava/lang/String; = "C8F81E0000"

.field private static final DM_NVI_ID_MOHOME:Ljava/lang/String; = "C8F81A0000"

.field private static final DM_NVI_ID_MOROAM:Ljava/lang/String; = "C8F81B0000"

.field private static final DM_NVI_ID_MTHOME:Ljava/lang/String; = "C8F81C0000"

.field private static final DM_NVI_ID_MTROAM:Ljava/lang/String; = "C8F81D0000"

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final EVENT_GET_CDMA_DATA_CALL:I = 0x3ee

.field private static final EVENT_GET_CDMA_ERI_VERSION:I = 0x3e9

.field private static final EVENT_GET_CDMA_MOHOME_CALL:I = 0x3ea

.field private static final EVENT_GET_CDMA_MOROAM_CALL:I = 0x3eb

.field private static final EVENT_GET_CDMA_MTHOME_CALL:I = 0x3ec

.field private static final EVENT_GET_CDMA_MTROAM_CALL:I = 0x3ed

.field private static final EVENT_GET_CDMA_PROFILE1_NAI:I = 0x384

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field public static PHONE_SERVICE_ACTION:Ljava/lang/String; = null

.field public static PHONE_TASK_INDEX_NAME:Ljava/lang/String; = null

.field private static final REFRESH_LIFE_STATISTICS:I = 0x64

.field private static final REFRESH_LIFE_STATISTICS_2:I = 0x65

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I

.field private static final TAG:Ljava/lang/String;

.field private static mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

.field private static mLifeCallCounter:J

.field private static mLifeCallTimer:J

.field private static mLifeDataRX:J

.field private static mLifeDataTX:J


# instance fields
.field private final ERI_CMD:Ljava/lang/String;

.field private final PRO1_NAI_CMD:Ljava/lang/String;

.field key:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcPhoneService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    .line 124
    const-string v0, "com.android.settings.framework.app.action.PHONE_SERVICE_ACTION"

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    .line 126
    const-string v0, "PhoneTaskIndexField"

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 367
    const-string v0, "C826D10101"

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->PRO1_NAI_CMD:Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/lang/String;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->key:Ljava/lang/String;

    .line 373
    const-string v0, "C85904000A4552492f303030303400"

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->ERI_CMD:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->initial()V

    .line 132
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->parseResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->updateLifeStatistics(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->updateLifeStatistics2(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->validateStateOfNv(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 602
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 603
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 604
    .local v2, j:I
    const-string v4, ""

    .line 606
    .local v4, result:Ljava/lang/String;
    :goto_0
    if-gt v2, v3, :cond_0

    .line 607
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, tmp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 609
    move v1, v2

    .line 610
    add-int/lit8 v2, v2, 0x2

    .line 611
    goto :goto_0

    .line 612
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 613
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method private ensurePhoneObject()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 145
    :cond_0
    return-void
.end method

.method private initial()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    .line 138
    :cond_0
    return-void
.end method

.method private static parseResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 713
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->validateStateOfNv(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 714
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseCmd(Ljava/lang/String;)V

    .line 716
    :cond_0
    return-void
.end method

.method private sendDMCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 724
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 725
    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v2, "sendDMCommand error: null phone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendDMCommand2(Ljava/lang/String;)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 734
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 735
    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v2, "sendDMCommand error: null phone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private static updateLifeStatistics(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 627
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 628
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v5, "updateLifeStatistics"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getParseResult()Z

    move-result v4

    if-nez v4, :cond_1

    .line 632
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v5, "parsing error, ignore updating"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_0
    return-void

    .line 636
    :cond_1
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getCallTimer()J

    move-result-wide v4

    sput-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeCallTimer:J

    .line 637
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getCallCounter()J

    move-result-wide v4

    sput-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeCallCounter:J

    .line 642
    sget-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeCallCounter:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, summary:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v0, intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_CALL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    const-string v4, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 655
    sget-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeCallTimer:J

    const-wide/16 v6, 0x3c

    div-long v2, v4, v6

    .line 657
    .local v2, timerByMinutes:J
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 661
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_MINS:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const-string v4, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static updateLifeStatistics2(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, 0x400

    .line 670
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v5, "updateLifeStatistics2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getParseResult()Z

    move-result v4

    if-nez v4, :cond_0

    .line 673
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v5, "parsing error, ignore updating"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_0
    return-void

    .line 676
    :cond_0
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getDataRx()J

    move-result-wide v4

    sput-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeDataRX:J

    .line 677
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getDataTx()J

    move-result-wide v4

    sput-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeDataTX:J

    .line 681
    sget-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeDataRX:J

    div-long v0, v4, v6

    .line 683
    .local v0, dataLenByKB:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, summary:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_RX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    const-string v4, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 694
    sget-wide v4, Lcom/android/settings/framework/app/HtcPhoneService;->mLifeDataTX:J

    div-long v0, v4, v6

    .line 696
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 700
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_TX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 703
    const-string v4, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static validateStateOfNv(Ljava/lang/String;)I
    .locals 6
    .parameter "command"

    .prologue
    .line 558
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, errState:Ljava/lang/String;
    const-string v0, ""

    .line 560
    .local v0, errMsg:Ljava/lang/String;
    const/4 v2, -0x1

    .line 561
    .local v2, state:I
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 562
    const/4 v2, 0x0

    .line 563
    const-string v0, ""

    .line 589
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 590
    const-string v3, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command state is error, reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    return v2

    .line 564
    :cond_1
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 565
    const/4 v2, 0x1

    .line 566
    const-string v0, "internal dmss used"

    goto :goto_0

    .line 567
    :cond_2
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 568
    const/4 v2, 0x1

    .line 569
    const-string v0, "can\'t recognize command"

    goto :goto_0

    .line 570
    :cond_3
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 571
    const/4 v2, 0x1

    .line 572
    const-string v0, "memory is full"

    goto :goto_0

    .line 573
    :cond_4
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 574
    const/4 v2, 0x1

    .line 575
    const-string v0, "command is fail"

    goto :goto_0

    .line 576
    :cond_5
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 577
    const/4 v2, 0x2

    .line 578
    const-string v0, "not support this command"

    goto :goto_0

    .line 579
    :cond_6
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 580
    const/4 v2, 0x2

    .line 581
    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    .line 582
    :cond_7
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 583
    const/4 v2, 0x1

    .line 584
    const-string v0, "memeory is read only"

    goto :goto_0

    .line 586
    :cond_8
    const/4 v2, 0x1

    .line 587
    const-string v0, "command error with non-knowing reason"

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const v10, 0x7f0c0e4a

    const v9, 0x7f0c0b48

    const/4 v8, 0x0

    .line 149
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, index:I
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getPhoneTask(I)Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    move-result-object v2

    .line 152
    .local v2, phoneTask:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhoneTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService$1;->$SwitchMap$com$android$settings$framework$app$HtcPhoneService$PhoneTask:[I

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 344
    :goto_0
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_1
    return-void

    .line 159
    :pswitch_0
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_LIFE_TIME_TOTAL_CALLS_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 161
    new-instance v5, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-direct {v5, v8}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;-><init>(Lcom/android/settings/framework/app/HtcPhoneService$1;)V

    sput-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    .line 163
    const-string v5, "C8F81A0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 164
    const-string v5, "C8F81B0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 165
    const-string v5, "C8F81C0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 166
    const-string v5, "C8F81D0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :pswitch_1
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_LIFE_TIME_TOTAL_MINS_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 174
    new-instance v5, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-direct {v5, v8}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;-><init>(Lcom/android/settings/framework/app/HtcPhoneService$1;)V

    sput-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    .line 176
    const-string v5, "C8F81A0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 177
    const-string v5, "C8F81B0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 178
    const-string v5, "C8F81C0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    .line 179
    const-string v5, "C8F81D0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :pswitch_2
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_LIFE_TIME_TOTAL_CALLS_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 187
    new-instance v5, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-direct {v5, v8}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;-><init>(Lcom/android/settings/framework/app/HtcPhoneService$1;)V

    sput-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    .line 189
    const-string v5, "C8F81E0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand2(Ljava/lang/String;)V

    .line 194
    :pswitch_3
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_LIFE_TIME_TOTAL_CALLS_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 196
    new-instance v5, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    invoke-direct {v5, v8}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;-><init>(Lcom/android/settings/framework/app/HtcPhoneService$1;)V

    sput-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->mCmdParser:Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;

    .line 198
    const-string v5, "C8F81E0000"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/app/HtcPhoneService;->sendDMCommand2(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 212
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/HtcIfPhone;->getImei()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    :cond_0
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v3, resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 227
    .end local v3           #resultIntent:Landroid/content/Intent;
    .end local v4           #value:Ljava/lang/String;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 229
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/HtcIfPhone;->getImeiSv()Ljava/lang/String;

    move-result-object v4

    .line 230
    .restart local v4       #value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    :cond_1
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v3       #resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI_SV:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 248
    .end local v3           #resultIntent:Landroid/content/Intent;
    .end local v4           #value:Ljava/lang/String;
    :pswitch_6
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_ERI_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 250
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 251
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->key:Ljava/lang/String;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v6, "C85904000A4552492f303030303400"

    invoke-interface {v5, v6, v1}, Lcom/android/internal/telephony/HtcIfPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 259
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_7
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->TAG:Ljava/lang/String;

    const-string v6, "CDMA_NAI_INDEX"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 261
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x384

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 262
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->key:Ljava/lang/String;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v6, "C826D10101"

    invoke-interface {v5, v6, v1}, Lcom/android/internal/telephony/HtcIfPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 269
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_8
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 271
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/HtcIfPhone;->getPRIVersion()Ljava/lang/String;

    move-result-object v4

    .line 272
    .restart local v4       #value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 273
    invoke-virtual {p0, v10}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    :cond_2
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v3       #resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_PRI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 288
    .end local v3           #resultIntent:Landroid/content/Intent;
    .end local v4           #value:Ljava/lang/String;
    :pswitch_9
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 290
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v4

    .line 291
    .restart local v4       #value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 292
    invoke-virtual {p0, v10}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 299
    :cond_3
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v3       #resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_PRL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 308
    .end local v3           #resultIntent:Landroid/content/Intent;
    .end local v4           #value:Ljava/lang/String;
    :pswitch_a
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 309
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 310
    .restart local v4       #value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 311
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 316
    :cond_4
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v3       #resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ICC:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 326
    .end local v3           #resultIntent:Landroid/content/Intent;
    .end local v4           #value:Ljava/lang/String;
    :pswitch_b
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService;->ensurePhoneObject()V

    .line 328
    iget-object v5, p0, Lcom/android/settings/framework/app/HtcPhoneService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v4

    .line 329
    .restart local v4       #value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 330
    invoke-virtual {p0, v10}, Lcom/android/settings/framework/app/HtcPhoneService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 335
    :cond_5
    new-instance v3, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .restart local v3       #resultIntent:Landroid/content/Intent;
    sget-object v5, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v6, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_MEID:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
