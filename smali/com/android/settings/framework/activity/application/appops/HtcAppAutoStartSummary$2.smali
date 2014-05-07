.class Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$2;
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
    .line 287
    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$2;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$2;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->updateListView()V

    .line 291
    return-void
.end method
