.class Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountQueryHandler"
.end annotation


# static fields
.field private static final TOKEN_ACCOUNT_LOOKUP_QUERY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "resolver"

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    .line 810
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 811
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 815
    if-eqz p3, :cond_1

    .line 817
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #calls: Lcom/android/settings/accounts/AccountSyncSettings;->setFromCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/settings/accounts/AccountSyncSettings;->access$400(Lcom/android/settings/accounts/AccountSyncSettings;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 824
    :cond_1
    return-void

    .line 821
    :catchall_0
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0
.end method
