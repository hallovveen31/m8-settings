.class Lcom/android/settings/framework/os/HtcCacheDataPreloader$1;
.super Ljava/lang/Object;
.source "HtcCacheDataPreloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/os/HtcCacheDataPreloader;->asynPreload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/os/HtcCacheDataPreloader;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/os/HtcCacheDataPreloader;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    .local p0, this:Lcom/android/settings/framework/os/HtcCacheDataPreloader$1;,"Lcom/android/settings/framework/os/HtcCacheDataPreloader.1;"
    iput-object p1, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader$1;->this$0:Lcom/android/settings/framework/os/HtcCacheDataPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    .local p0, this:Lcom/android/settings/framework/os/HtcCacheDataPreloader$1;,"Lcom/android/settings/framework/os/HtcCacheDataPreloader.1;"
    iget-object v0, p0, Lcom/android/settings/framework/os/HtcCacheDataPreloader$1;->this$0:Lcom/android/settings/framework/os/HtcCacheDataPreloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/os/HtcCacheDataPreloader;->syncPreload(Z)Ljava/lang/Object;

    .line 68
    return-void
.end method
