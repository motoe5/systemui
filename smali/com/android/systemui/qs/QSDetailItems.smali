.class public Lcom/android/systemui/qs/QSDetailItems;
.super Landroid/widget/FrameLayout;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetailItems$Adapter;,
        Lcom/android/systemui/qs/QSDetailItems$Callback;,
        Lcom/android/systemui/qs/QSDetailItems$H;,
        Lcom/android/systemui/qs/QSDetailItems$Item;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

.field private mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private final mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

.field private mItemList:Lcom/android/systemui/qs/AutoSizingList;

.field private mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

.field private mItemsVisible:Z

.field private final mQsDetailIconOverlaySize:I

.field private mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailItems;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailItems;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailItems;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSDetailItems;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailItems;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSDetailItems;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailItems;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mQsDetailIconOverlaySize:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailItems;
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSDetailItems;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailItems;
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItemsVisible(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailItems;
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "QSDetailItems"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailItems$H;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    .line 56
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Adapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    .line 70
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 71
    const-string/jumbo v0, "QSDetailItems"

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetailItems;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    const v1, 0x7f070221

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mQsDetailIconOverlaySize:I

    .line 74
    return-void
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convert"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    instance-of v0, p1, Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lcom/android/systemui/qs/QSDetailItems;

    .end local p1    # "convert":Landroid/view/View;
    return-object p1

    .line 80
    .restart local p1    # "convert":Landroid/view/View;
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00da

    .line 81
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method private handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 151
    return-void
.end method

.method private handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 5
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 154
    if-eqz p1, :cond_0

    array-length v0, p1

    .line 155
    .local v0, "itemCount":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    if-nez v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/AutoSizingList;->setVisibility(I)V

    .line 157
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 158
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;->notifyDataSetChanged()V

    .line 159
    return-void

    .line 154
    .end local v0    # "itemCount":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "itemCount":I
    goto :goto_0

    :cond_1
    move v1, v3

    .line 155
    goto :goto_1

    :cond_2
    move v3, v2

    .line 156
    goto :goto_2
.end method

.method private handleSetItemsVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 162
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 163
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v1}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 167
    :cond_2
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_qs_QSDetailItems_4286(II)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "text"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 124
    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    const v4, 0x7f07021c

    invoke-static {v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 100
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v3}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v0

    .line 101
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 103
    .local v2, "item":Landroid/view/View;
    const v3, 0x1020016

    .line 104
    const v4, 0x7f070229

    .line 103
    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 105
    const v3, 0x1020010

    .line 106
    const v4, 0x7f07022a

    .line 105
    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "item":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 130
    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 132
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 87
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/AutoSizingList;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/AutoSizingList;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoSizingList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    .line 94
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .prologue
    const/4 v1, 0x2

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void
.end method

.method public setEmptyState(II)V
    .locals 2
    .param p1, "icon"    # I
    .param p2, "text"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/qs/-$Lambda$rOAVza9soej4Frj6ETbtStvRIyo;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/systemui/qs/-$Lambda$rOAVza9soej4Frj6ETbtStvRIyo;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    const/4 v1, 0x1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 146
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void

    :cond_0
    move v0, v1

    .line 146
    goto :goto_0
.end method

.method public setTagSuffix(Ljava/lang/String;)V
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "QSDetailItems."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    .line 112
    return-void
.end method
