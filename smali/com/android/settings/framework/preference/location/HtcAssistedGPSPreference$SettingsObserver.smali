.class Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;
.super Ljava/lang/Object;
.source "HtcAssistedGPSPreference.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;->this$0:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;-><init>(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsObserver.update(): "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;->this$0:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->syncStateFromDataSourceInBackground()V

    return-void
.end method
