.class Lcom/android/settings/framework/app/HtcInternalListActivity$1;
.super Ljava/lang/Object;
.source "HtcInternalListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcInternalListActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcInternalListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcInternalListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalListActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalListActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->recreate()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalListActivity;

    #getter for: Lcom/android/settings/framework/app/HtcInternalListActivity;->DEBUG:Z
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->access$000(Lcom/android/settings/framework/app/HtcInternalListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalListActivity;

    #getter for: Lcom/android/settings/framework/app/HtcInternalListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->access$100(Lcom/android/settings/framework/app/HtcInternalListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Font scale or theme changed, recreate UI."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return-void
.end method
