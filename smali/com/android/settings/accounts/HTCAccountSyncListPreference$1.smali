.class Lcom/android/settings/accounts/HTCAccountSyncListPreference$1;
.super Ljava/lang/Object;
.source "HTCAccountSyncListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/HTCAccountSyncListPreference;->onPrepareHtcDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/HTCAccountSyncListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/HTCAccountSyncListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference$1;->this$0:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference$1;->this$0:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    #setter for: Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->access$002(Lcom/android/settings/accounts/HTCAccountSyncListPreference;I)I

    iget-object v0, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference$1;->this$0:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference$1;->this$0:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    #getter for: Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->access$000(Lcom/android/settings/accounts/HTCAccountSyncListPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference$1;->this$0:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference$1;->this$0:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
