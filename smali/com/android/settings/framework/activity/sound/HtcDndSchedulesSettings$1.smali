.class Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;
.super Landroid/database/ContentObserver;
.source "HtcDndSchedulesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->performRefreshListByCheck()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$100(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V

    .line 114
    return-void
.end method
