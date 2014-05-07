.class final Lcom/android/settings/framework/os/HtcStorageManager$2;
.super Lcom/android/settings/framework/os/HtcConditionScanner;
.source "HtcStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/os/HtcStorageManager;->unmountInternalSdCardVolume(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1193
    invoke-direct {p0}, Lcom/android/settings/framework/os/HtcConditionScanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected dumpStates(I)V
    .locals 2
    .parameter "round"

    .prologue
    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t InternalSdCard:status["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/os/HtcStorageManager$2;->getTimeInterval()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->access$000(Ljava/lang/String;)V

    .line 1200
    return-void
.end method

.method protected finish(Z)V
    .locals 1
    .parameter "successful"

    .prologue
    .line 1215
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1216
    const-string v0, "\t InternalSdCard:finish scanning"

    #calls: Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->access$000(Ljava/lang/String;)V

    .line 1217
    if-eqz p1, :cond_1

    .line 1218
    const-string v0, "\t InternalSdCard:successful"

    #calls: Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->access$000(Ljava/lang/String;)V

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    const-string v0, "\t InternalSdCard:failed"

    #calls: Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->access$000(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected until()Z
    .locals 2

    .prologue
    .line 1204
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, state:Ljava/lang/String;
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    const/4 v1, 0x1

    .line 1210
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
