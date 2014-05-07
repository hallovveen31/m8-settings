.class Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$1;
.super Ljava/lang/Object;
.source "HtcAppAutoStartSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$1;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$1;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->updateList()V

    .line 284
    return-void
.end method
