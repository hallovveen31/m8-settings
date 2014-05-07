.class Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "HtcChildLockListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    move-object v2, p2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    #getter for: Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->access$000(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f04007c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    #getter for: Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mIsAlignLastControl:Z
    invoke-static {v3}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->access$100(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    :cond_0
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    #getter for: Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mChildLockEntries:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->access$200(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    #getter for: Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mChildLockEntries:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->access$200(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    #getter for: Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mChildLockEntries:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->access$200(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$1;->this$0:Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    #getter for: Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mChildLockEntriesDescription:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->access$300(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method
