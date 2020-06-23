.class public Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
    }
.end annotation


# static fields
.field private static final mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

.field private static final sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

.field private static final sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

.field private static final sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

.field private static final sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

.field private static final sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;


# instance fields
.field private final mComparators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDividers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method static synthetic -get0()Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 96
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 98
    sget-object v3, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 99
    sget-object v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    .line 100
    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    .line 97
    const v2, 0x1020006

    .line 96
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 104
    sget-object v3, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 105
    sget-object v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    .line 106
    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    .line 103
    const v2, 0x102032f

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 110
    new-instance v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil;)V

    .line 125
    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    .line 108
    const v2, 0x1020380

    .line 109
    const/4 v3, 0x0

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 127
    const v2, 0x10201b3

    .line 126
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 129
    const v2, 0x1020287

    .line 128
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    const v1, 0x1020288

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    const v1, 0x102043f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method private sanitizeChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 177
    const v1, 0x102032f

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    .line 178
    .local v0, "header":Landroid/view/NotificationHeaderView;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeader(Landroid/view/NotificationHeaderView;)V

    .line 180
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    return-void
.end method

.method private sanitizeHeader(Landroid/view/NotificationHeaderView;)V
    .locals 12
    .param p1, "rowHeader"    # Landroid/view/NotificationHeaderView;

    .prologue
    const/16 v10, 0x8

    .line 183
    if-nez p1, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v1

    .line 187
    .local v1, "childCount":I
    const v9, 0x102043b

    invoke-virtual {p1, v9}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 188
    .local v6, "time":Landroid/view/View;
    const/4 v2, 0x0

    .line 189
    .local v2, "hasVisibleText":Z
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    add-int/lit8 v9, v1, -0x1

    if-ge v3, v9, :cond_1

    .line 190
    invoke-virtual {p1, v3}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "child":Landroid/view/View;
    instance-of v9, v0, Landroid/widget/TextView;

    if-eqz v9, :cond_5

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v10, :cond_5

    .line 193
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 191
    if-eqz v9, :cond_5

    .line 194
    if-eq v0, v6, :cond_5

    .line 195
    const/4 v2, 0x1

    .line 200
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    if-eqz v2, :cond_2

    .line 201
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification;->showsTime()Z

    move-result v9

    .line 200
    if-eqz v9, :cond_6

    .line 202
    :cond_2
    const/4 v7, 0x0

    .line 203
    .local v7, "timeVisibility":I
    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 204
    const/4 v4, 0x0

    .line 206
    .local v4, "left":Landroid/view/View;
    const/4 v3, 0x1

    .end local v4    # "left":Landroid/view/View;
    :goto_2
    add-int/lit8 v9, v1, -0x1

    if-ge v3, v9, :cond_c

    .line 207
    invoke-virtual {p1, v3}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .restart local v0    # "child":Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 209
    const/4 v8, 0x0

    .line 211
    .local v8, "visible":Z
    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v9, v1, -0x1

    if-ge v3, v9, :cond_3

    .line 212
    invoke-virtual {p1, v3}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 213
    .local v5, "right":Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 215
    add-int/lit8 v3, v3, -0x1

    .line 223
    .end local v5    # "right":Landroid/view/View;
    :cond_3
    :goto_4
    if-eqz v8, :cond_a

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .end local v8    # "visible":Z
    :cond_4
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 189
    .end local v7    # "timeVisibility":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "child":Landroid/view/View;
    :cond_6
    const/16 v7, 0x8

    .restart local v7    # "timeVisibility":I
    goto :goto_1

    .line 217
    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "right":Landroid/view/View;
    .restart local v8    # "visible":Z
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v10, :cond_9

    instance-of v9, v5, Landroid/widget/TextView;

    if-eqz v9, :cond_9

    .line 218
    if-eqz v4, :cond_8

    const/4 v8, 0x1

    .line 219
    :goto_7
    move-object v4, v5

    .line 220
    .local v4, "left":Landroid/view/View;
    goto :goto_4

    .line 218
    .end local v4    # "left":Landroid/view/View;
    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    .line 211
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v5    # "right":Landroid/view/View;
    :cond_a
    move v9, v10

    .line 223
    goto :goto_5

    .line 224
    .end local v8    # "visible":Z
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v10, :cond_4

    instance-of v9, v0, Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 225
    move-object v4, v0

    .restart local v4    # "left":Landroid/view/View;
    goto :goto_6

    .line 228
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "left":Landroid/view/View;
    :cond_c
    return-void
.end method

.method private sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeader(Landroid/view/NotificationHeaderView;)V

    .line 166
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 169
    .local v0, "layout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(Landroid/view/View;)V

    .line 170
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(Landroid/view/View;)V

    .line 171
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(Landroid/view/View;)V

    .line 172
    return-void
.end method


# virtual methods
.method public restoreNotificationHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 231
    const/4 v0, 0x0

    .local v0, "compI":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 235
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 5

    .prologue
    .line 135
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 136
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-nez v2, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    .local v0, "compI":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 141
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->init()V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 146
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 147
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 148
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->compareToHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 145
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 154
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 155
    .restart local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v0, 0x0

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 156
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 159
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 161
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_5
    return-void
.end method
