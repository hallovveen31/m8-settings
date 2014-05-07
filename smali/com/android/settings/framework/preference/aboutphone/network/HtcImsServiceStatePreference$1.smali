.class Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcImsServiceStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    #getter for: Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->access$000(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    #calls: Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->checkimsStateReceiverIntent(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->access$100(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    #getter for: Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->access$000(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    #getter for: Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->access$000(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImsStateReceiver prev state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cur state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    #getter for: Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->access$000(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    iget-object v3, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;->this$0:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    #getter for: Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->access$000(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getSummaryString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->access$300(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
