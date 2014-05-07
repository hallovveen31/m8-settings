.class Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$1;
.super Ljava/lang/Object;
.source "HtcInternalPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->recreate()V

    .line 234
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity$1;->this$0:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    #getter for: Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->DEBUG:Z
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->access$000(Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Font scale or theme changed, recreate UI."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    return-void
.end method
