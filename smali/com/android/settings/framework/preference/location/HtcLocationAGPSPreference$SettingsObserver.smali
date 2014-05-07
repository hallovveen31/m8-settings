.class Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;
.super Ljava/lang/Object;
.source "HtcLocationAGPSPreference.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;->this$0:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;-><init>(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsObserver.update(): "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;->this$0:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->syncStateFromDataSourceInBackground()V

    return-void
.end method
