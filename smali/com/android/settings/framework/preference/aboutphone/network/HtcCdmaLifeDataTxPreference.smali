.class public Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;
.source "HtcCdmaLifeDataTxPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;->result:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method protected canGetSummaryImmediately()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 69
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return v6

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;->TAG:Ljava/lang/String;

    const-string v2, "getMobileTxBytes failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c09ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_TX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;->result:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e4a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;->result:Ljava/lang/String;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;->result:Ljava/lang/String;

    return-object v0
.end method
