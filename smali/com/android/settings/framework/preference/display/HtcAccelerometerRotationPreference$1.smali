.class Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "HtcAccelerometerRotationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference$1;->this$0:Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setCheckedInForeground(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
