.class public Lcom/android/settings/framework/util/HtcViewFinder;
.super Ljava/lang/Object;
.source "HtcViewFinder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/util/HtcViewFinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/HtcViewFinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectCompatibleViewsByClass(Landroid/view/View;Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "rootView"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, viewCollector:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 142
    .local v2, parent:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 152
    check-cast v4, Landroid/view/ViewGroup;

    .line 153
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 157
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 158
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, childView:Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/settings/framework/util/HtcViewFinder;->collectCompatibleViewsByClass(Landroid/view/View;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #i:I
    .end local v3           #size:I
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 163
    :cond_2
    return-void
.end method

.method private static collectViewsByClass(Landroid/view/View;Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "rootView"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, viewCollector:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 119
    check-cast v3, Landroid/view/ViewGroup;

    .line 120
    .local v3, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 124
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 125
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, childView:Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/settings/framework/util/HtcViewFinder;->collectViewsByClass(Landroid/view/View;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private static dump(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 218
    sget-object v0, Lcom/android/settings/framework/util/HtcViewFinder;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public static dumpViews(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 171
    if-eqz p0, :cond_0

    .line 172
    const-string v0, ""

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcViewFinder;->dumpViewsTraversal(Ljava/lang/String;Landroid/view/View;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/HtcViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "Failed to dump the views since \'activity\' is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dumpViews(Landroid/view/View;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 183
    if-eqz p0, :cond_0

    .line 184
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/HtcViewFinder;->dumpViewsTraversal(Ljava/lang/String;Landroid/view/View;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/HtcViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "Failed to dump the views since \'rootView\' is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static dumpViewsTraversal(Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .parameter "indent"
    .parameter "rootView"

    .prologue
    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ID:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/util/HtcViewFinder;->dump(Ljava/lang/String;)V

    .line 200
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 201
    check-cast v3, Landroid/view/ViewGroup;

    .line 202
    .local v3, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 206
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 207
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, childView:Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcViewFinder;->dumpViewsTraversal(Ljava/lang/String;Landroid/view/View;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public static findCompatibleViewsByClass(Landroid/app/Activity;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/HtcViewFinder;->findCompatibleViewsByClass(Landroid/view/View;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static findCompatibleViewsByClass(Landroid/view/View;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 3
    .parameter "rootView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, viewCollector:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 95
    :cond_0
    sget-object v1, Lcom/android/settings/framework/util/HtcViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "Failed to find views since eithor \'rootView\' or \'klass\' is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcViewFinder;->collectCompatibleViewsByClass(Landroid/view/View;Ljava/lang/Class;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static findViewsByClass(Landroid/app/Activity;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/HtcViewFinder;->findViewsByClass(Landroid/view/View;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static findViewsByClass(Landroid/view/View;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 3
    .parameter "rootView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, viewCollector:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 71
    :cond_0
    sget-object v1, Lcom/android/settings/framework/util/HtcViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "Failed to find views since eithor \'rootView\' or \'klass\' is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-object v0

    .line 74
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcViewFinder;->collectViewsByClass(Landroid/view/View;Ljava/lang/Class;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
