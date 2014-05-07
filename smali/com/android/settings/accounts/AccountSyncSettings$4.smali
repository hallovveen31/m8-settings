.class Lcom/android/settings/accounts/AccountSyncSettings$4;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Lcom/htc/widget/IDividerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$4;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerType(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 1013
    const/4 v1, 0x0

    .line 1015
    .local v1, pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$4;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 1017
    .local v0, count:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return v2

    .line 1020
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings$4;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 1021
    instance-of v3, v1, Landroid/preference/PreferenceCategory;

    if-nez v3, :cond_0

    .line 1024
    const/4 v2, 0x1

    goto :goto_0
.end method
