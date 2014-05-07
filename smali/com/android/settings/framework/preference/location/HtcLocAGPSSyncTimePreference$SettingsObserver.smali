.class Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;
.super Ljava/lang/Object;
.source "HtcLocAGPSSyncTimePreference.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;->this$0:Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;-><init>(Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsObserver.update():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;->this$0:Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->syncStateFromDataSourceInBackground()V

    .line 51
    return-void
.end method
