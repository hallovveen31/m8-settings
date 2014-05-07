.class Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$2;
.super Ljava/lang/Object;
.source "HtcDndEditSchedulingSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->doPlugin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$2;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$2;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->applyAllowedContactsNewValue(Ljava/lang/Object;)V
    invoke-static {v0, p2}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$100(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;Ljava/lang/Object;)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method
