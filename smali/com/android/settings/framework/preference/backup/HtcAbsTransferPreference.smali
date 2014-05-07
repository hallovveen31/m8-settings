.class public abstract Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;
.super Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.source "HtcAbsTransferPreference.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->DEBUG:Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 53
    return-void
.end method


# virtual methods
.method protected abstract getCustomULogType()Ljava/lang/String;
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method protected final onClick()V
    .locals 5

    .prologue
    .line 63
    const-string v1, "com.htc.dnatransfer"

    const-string v2, "device_type"

    const-string v3, "type"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->getCustomULogType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->ulog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, uLogData:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->log(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
