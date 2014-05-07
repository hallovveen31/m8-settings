.class Lcom/android/settings/accounts/ManageAccounts$2;
.super Ljava/lang/Object;
.source "ManageAccounts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccounts;->setIconRunnable(Lcom/android/settings/accounts/ManageAccountPreference;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccounts;

.field final synthetic val$accountPref:Lcom/android/settings/accounts/ManageAccountPreference;

.field final synthetic val$syncStatus:I


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccounts;Lcom/android/settings/accounts/ManageAccountPreference;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccounts$2;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    iput-object p2, p0, Lcom/android/settings/accounts/ManageAccounts$2;->val$accountPref:Lcom/android/settings/accounts/ManageAccountPreference;

    iput p3, p0, Lcom/android/settings/accounts/ManageAccounts$2;->val$syncStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts$2;->val$accountPref:Lcom/android/settings/accounts/ManageAccountPreference;

    iget v1, p0, Lcom/android/settings/accounts/ManageAccounts$2;->val$syncStatus:I

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ManageAccountPreference;->setSyncStatus(I)V

    .line 562
    return-void
.end method
