.class Lcom/android/settings/framework/core/storage/HtcAppsStatistician$1;
.super Ljava/lang/Object;
.source "HtcAppsStatistician.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$1;->this$0:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$1;->this$0:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    #calls: Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->requestPackageSizeInfo()V
    invoke-static {v0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->access$000(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)V

    .line 367
    return-void
.end method
