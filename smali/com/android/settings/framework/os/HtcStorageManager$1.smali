.class final Lcom/android/settings/framework/os/HtcStorageManager$1;
.super Lcom/android/settings/framework/os/HtcConditionScanner;
.source "HtcStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/os/HtcStorageManager;->unmountSdCardVolume(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/os/HtcConditionScanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected dumpStates(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t SdCard:status["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/os/HtcConditionScanner;->getTimeInterval()I

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

    return-void
.end method

.method protected finish(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "\t SdCard:finish scanning"

    #calls: Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->access$000(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, "\t SdCard:successful"

    #calls: Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->access$000(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "\t SdCard:failed"

    #calls: Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->access$000(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected until()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unmounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bad_removal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "unmountable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method
