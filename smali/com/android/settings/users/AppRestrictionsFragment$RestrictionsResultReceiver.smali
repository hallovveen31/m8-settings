.class Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestrictionsResultReceiver"
.end annotation


# static fields
.field private static final CUSTOM_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"


# instance fields
.field packageName:Ljava/lang/String;

.field preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.restrictions_list"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "android.intent.extra.restrictions_intent"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    #calls: Lcom/android/settings/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v5, v6, v7, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1000(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1200(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/os/UserManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;
    invoke-static {v8}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1100(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_0

    move-object v0, v3

    if-eqz v2, :cond_2

    const-string v5, "android.intent.extra.restrictions_bundle"

    invoke-static {v2}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-direct {v1, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c12e3

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    new-instance v5, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver$1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;Landroid/content/Intent;)V

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreference;->getOrder()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iget-object v5, v5, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->childPreferences:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {v5}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1400(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v5, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
