.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;
.super Ljava/lang/Thread;
.source "HtcAboutPhoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdaterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    #calls: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->isUpdaterProcessing()Z
    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)Z

    move-result v3

    #setter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z
    invoke-static {v2, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->access$002(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z
    invoke-static {v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->access$000(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-virtual {v2, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
