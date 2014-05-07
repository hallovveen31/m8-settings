.class Lcom/android/settings/accounts/ManageAccountsSettings$2;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;->setSummaryRunnable(Lcom/android/settings/AccountPreference;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

.field final synthetic val$accountPref:Lcom/android/settings/AccountPreference;

.field final synthetic val$updateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;Lcom/android/settings/AccountPreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    iput-object p2, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->val$accountPref:Lcom/android/settings/AccountPreference;

    iput-object p3, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->val$updateTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->val$accountPref:Lcom/android/settings/AccountPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$2;->val$updateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method
