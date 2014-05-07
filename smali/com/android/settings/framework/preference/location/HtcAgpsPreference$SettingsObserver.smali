.class Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;
.super Ljava/lang/Object;
.source "HtcAgpsPreference.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/location/HtcAgpsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/location/HtcAgpsPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/preference/location/HtcAgpsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;->this$0:Lcom/android/settings/framework/preference/location/HtcAgpsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/preference/location/HtcAgpsPreference;Lcom/android/settings/framework/preference/location/HtcAgpsPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;-><init>(Lcom/android/settings/framework/preference/location/HtcAgpsPreference;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 54
    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsObserver.update(): "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;->this$0:Lcom/android/settings/framework/preference/location/HtcAgpsPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->syncStateFromDataSourceInBackground()V

    .line 57
    return-void
.end method
