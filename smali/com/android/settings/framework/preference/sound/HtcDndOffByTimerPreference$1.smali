.class Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference$1;
.super Landroid/database/ContentObserver;
.source "HtcDndOffByTimerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference$1;->this$0:Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference$1;->this$0:Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;

    #calls: Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->refreshEnabledStatusByMode()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->access$000(Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;)V

    .line 48
    return-void
.end method
