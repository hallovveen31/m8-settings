.class Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings$1;
.super Landroid/database/ContentObserver;
.source "HtcDoNotDisturbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings$1;->this$0:Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings$1;->this$0:Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;

    #calls: Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->updateEnabledSwitchButton()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->access$000(Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;)V

    return-void
.end method
