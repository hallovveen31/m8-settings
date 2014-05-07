.class Lcom/android/settings/MonitoringCertInfoActivity$2;
.super Ljava/lang/Object;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MonitoringCertInfoActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MonitoringCertInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/MonitoringCertInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/MonitoringCertInfoActivity$2;->this$0:Lcom/android/settings/MonitoringCertInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/MonitoringCertInfoActivity$2;->this$0:Lcom/android/settings/MonitoringCertInfoActivity;

    invoke-virtual {v0}, Lcom/android/settings/MonitoringCertInfoActivity;->recreate()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/MonitoringCertInfoActivity$2;->this$0:Lcom/android/settings/MonitoringCertInfoActivity;

    #getter for: Lcom/android/settings/MonitoringCertInfoActivity;->DEBUG:Z
    invoke-static {v0}, Lcom/android/settings/MonitoringCertInfoActivity;->access$000(Lcom/android/settings/MonitoringCertInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/MonitoringCertInfoActivity$2;->this$0:Lcom/android/settings/MonitoringCertInfoActivity;

    #getter for: Lcom/android/settings/MonitoringCertInfoActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/MonitoringCertInfoActivity;->access$100(Lcom/android/settings/MonitoringCertInfoActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Font scale or theme changed, recreate UI."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method
