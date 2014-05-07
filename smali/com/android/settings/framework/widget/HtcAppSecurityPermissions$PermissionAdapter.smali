.class Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcAppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionAdapter"
.end annotation


# instance fields
.field final ITEMS:[Landroid/view/View;

.field final ITEM_COUNT:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;->this$0:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;->this$0:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    #getter for: Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mMoreItem:Lcom/htc/widget/HtcListItem;
    invoke-static {v2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->access$200(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;)Lcom/htc/widget/HtcListItem;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;->ITEMS:[Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;->ITEMS:[Landroid/view/View;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;->ITEM_COUNT:I

    iput-object p2, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;->ITEM_COUNT:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$PermissionAdapter;->ITEMS:[Landroid/view/View;

    aget-object v0, v1, p1

    return-object v0
.end method
