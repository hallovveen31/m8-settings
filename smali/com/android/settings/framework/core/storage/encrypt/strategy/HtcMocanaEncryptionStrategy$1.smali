.class Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;
.super Ljava/lang/Object;
.source "HtcMocanaEncryptionStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->runCryptoInNewThread(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;

.field final synthetic val$actionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;->this$0:Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;

    iput-object p2, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;->val$actionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    iput-object p3, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-static {}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v0, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v0           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 69
    .restart local v0       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;->this$0:Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> runCrypto(...)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->log(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;->this$0:Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;->val$actionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;->val$password:Ljava/lang/String;

    #calls: Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->runCrypto(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->access$100(Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy$1;->this$0:Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< runCrypto(...)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/core/storage/encrypt/strategy/HtcMocanaEncryptionStrategy;->log(Ljava/lang/String;)V

    .line 79
    :cond_1
    return-void
.end method
