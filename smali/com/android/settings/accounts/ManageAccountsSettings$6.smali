.class Lcom/android/settings/accounts/ManageAccountsSettings$6;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Lcom/htc/widget/IDividerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$6;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerType(I)I
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings$6;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v5}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v0, :cond_2

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings$6;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v5}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings$6;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v5}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v5, v2, Landroid/preference/PreferenceCategory;

    if-nez v5, :cond_0

    instance-of v5, v2, Lcom/android/settings/AccountPreference;

    if-eqz v5, :cond_3

    instance-of v5, v1, Landroid/preference/PreferenceCategory;

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method
