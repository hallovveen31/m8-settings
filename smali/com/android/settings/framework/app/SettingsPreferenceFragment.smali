.class Lcom/android/settings/framework/app/SettingsPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
    value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtcListView()Lcom/htc/widget/HtcListView;
    .locals 1

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method
