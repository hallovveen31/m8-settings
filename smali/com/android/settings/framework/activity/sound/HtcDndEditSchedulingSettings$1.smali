.class Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$1;
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

    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$1;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$1;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    check-cast p2, Ljava/util/Set;

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->applyRepeatNewValue(Ljava/util/Set;)V
    invoke-static {v0, p2}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$000(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;Ljava/util/Set;)V

    const/4 v0, 0x1

    return v0
.end method
