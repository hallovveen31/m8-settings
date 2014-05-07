.class Lcom/android/settings/framework/core/storage/HtcStorageEventListener$1;
.super Landroid/os/storage/StorageEventListener;
.source "HtcStorageEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/HtcStorageEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/storage/HtcStorageEventListener;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/storage/HtcStorageEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$1;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageEventListener;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$1;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageEventListener;

    #getter for: Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mOnStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->access$100(Lcom/android/settings/framework/core/storage/HtcStorageEventListener;)Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mOnStorageEventListener should not be null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;

    invoke-direct {v0}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;-><init>()V

    .line 102
    .local v0, params:Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;
    iput-object p1, v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->path:Ljava/lang/String;

    .line 103
    invoke-static {p2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->oldState:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    .line 104
    invoke-static {p3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->newState:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    .line 106
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$1;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageEventListener;

    #getter for: Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->mOnStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->access$100(Lcom/android/settings/framework/core/storage/HtcStorageEventListener;)Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;->onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    goto :goto_0
.end method
