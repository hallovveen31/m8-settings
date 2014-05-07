.class Lcom/android/settings/accounts/ManageAccountsSettings$3;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;->getSyncStatusRunnable(ILcom/android/settings/AccountPreference;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

.field final synthetic val$accountPref:Lcom/android/settings/AccountPreference;

.field final synthetic val$syncStatus:I

.field final synthetic val$update:Z


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;Lcom/android/settings/AccountPreference;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    iput-object p2, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->val$accountPref:Lcom/android/settings/AccountPreference;

    iput p3, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->val$syncStatus:I

    iput-boolean p4, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->val$update:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->val$accountPref:Lcom/android/settings/AccountPreference;

    iget v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->val$syncStatus:I

    iget-boolean v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->val$update:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    .line 405
    return-void
.end method
