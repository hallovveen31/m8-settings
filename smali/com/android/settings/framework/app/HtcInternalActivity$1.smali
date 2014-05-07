.class Lcom/android/settings/framework/app/HtcInternalActivity$1;
.super Ljava/lang/Object;
.source "HtcInternalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcInternalActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcInternalActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalActivity;

    #getter for: Lcom/android/settings/framework/app/HtcInternalActivity;->DEBUG:Z
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcInternalActivity;->access$000(Lcom/android/settings/framework/app/HtcInternalActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalActivity;

    #getter for: Lcom/android/settings/framework/app/HtcInternalActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcInternalActivity;->access$100(Lcom/android/settings/framework/app/HtcInternalActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Font scale or theme changed, recreate UI."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
