.class public Landroid/support/v17/leanback/widget/picker/DatePicker;
.super Landroid/support/v17/leanback/widget/picker/Picker;
.source "DatePicker.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static DATE_FIELDS:[I


# instance fields
.field mColDayIndex:I

.field mColMonthIndex:I

.field mColYearIndex:I

.field mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

.field mCurrentDate:Ljava/util/Calendar;

.field final mDateFormat:Ljava/text/DateFormat;

.field private mDatePickerFormat:Ljava/lang/String;

.field mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field mMaxDate:Ljava/util/Calendar;

.field mMinDate:Ljava/util/Calendar;

.field mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field mTempDate:Ljava/util/Calendar;

.field mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 342
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v10, 0x834

    const/16 v6, 0x76c

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "MM/dd/yyyy"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 76
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateCurrentLocale()V

    .line 77
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->dateSeparator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setSeparator(Ljava/lang/CharSequence;)V

    .line 80
    sget-object v4, Landroid/support/v17/leanback/R$styleable;->lbDatePicker:[I

    .line 79
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    sget v4, Landroid/support/v17/leanback/R$styleable;->lbDatePicker_android_minDate:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "minDate":Ljava/lang/String;
    sget v4, Landroid/support/v17/leanback/R$styleable;->lbDatePicker_android_maxDate:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "maxDate":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 85
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v3, v4}, Landroid/support/v17/leanback/widget/picker/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6, v8, v9}, Ljava/util/Calendar;->set(III)V

    .line 91
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 93
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 95
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, v4}, Landroid/support/v17/leanback/widget/picker/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v10, v8, v9}, Ljava/util/Calendar;->set(III)V

    .line 101
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 104
    sget v4, Landroid/support/v17/leanback/R$styleable;->lbDatePicker_datePickerFormat:I

    .line 103
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "datePickerFormat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    new-instance v1, Ljava/lang/String;

    .line 107
    .end local v1    # "datePickerFormat":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v4

    .line 106
    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    .line 109
    .restart local v1    # "datePickerFormat":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    .line 110
    return-void

    .line 89
    .end local v1    # "datePickerFormat":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6, v8, v9}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 99
    :cond_4
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v10, v8, v9}, Ljava/util/Calendar;->set(III)V

    goto :goto_1
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v1, 0x1

    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/text/ParseException;
    const-string/jumbo v1, "DatePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    return v1
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 297
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private updateCurrentLocale()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getDateConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    .line 185
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 186
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    .line 187
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 188
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 190
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 192
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumnAt(ILandroid/support/v17/leanback/widget/picker/PickerColumn;)V

    .line 194
    :cond_0
    return-void
.end method

.method private static updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1
    .param p0, "column"    # Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .param p1, "value"    # I

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMaxValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMaxValue(I)V

    .line 337
    const/4 v0, 0x1

    return v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1
    .param p0, "column"    # Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .param p1, "value"    # I

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMinValue(I)V

    .line 329
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateSpinners(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 395
    new-instance v0, Landroid/support/v17/leanback/widget/picker/DatePicker$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker$1;-><init>(Landroid/support/v17/leanback/widget/picker/DatePicker;Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method


# virtual methods
.method public final onColumnValueChanged(II)V
    .locals 7
    .param p1, "column"    # I
    .param p2, "newVal"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 198
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getColumnAt(I)Landroid/support/v17/leanback/widget/picker/PickerColumn;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v0

    .line 201
    .local v0, "oldVal":I
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    if-ne p1, v1, :cond_0

    .line 202
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v2, p2, v0

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    .line 210
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 211
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 210
    invoke-direct {p0, v1, v2, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setDate(III)V

    .line 212
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateSpinners(Z)V

    .line 213
    return-void

    .line 203
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    if-ne p1, v1, :cond_1

    .line 204
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v2, p2, v0

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 205
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    if-ne p1, v1, :cond_2

    .line 206
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v2, p2, v0

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 208
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setDatePickerFormat(Ljava/lang/String;)V
    .locals 5
    .param p1, "datePickerFormat"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    new-instance p1, Ljava/lang/String;

    .line 129
    .end local p1    # "datePickerFormat":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 128
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V

    .line 131
    .restart local p1    # "datePickerFormat":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDatePickerFormat:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    return-void

    .line 135
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDatePickerFormat:Ljava/lang/String;

    .line 136
    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    .line 137
    iput v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    iput v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    iput v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/widget/picker/PickerColumn;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "datePicker format error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :sswitch_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-eqz v2, :cond_2

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "datePicker format error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_2
    new-instance v2, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iput v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    .line 147
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const-string/jumbo v3, "%d"

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setLabelFormat(Ljava/lang/String;)V

    .line 139
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :sswitch_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-eqz v2, :cond_3

    .line 151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "datePicker format error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_3
    new-instance v2, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 155
    iput v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    goto :goto_1

    .line 158
    :sswitch_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-eqz v2, :cond_4

    .line 159
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "datePicker format error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_4
    new-instance v2, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const-string/jumbo v3, "%02d"

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setLabelFormat(Ljava/lang/String;)V

    .line 163
    iput v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    goto :goto_1

    .line 169
    :cond_5
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumns(Ljava/util/List;)V

    .line 170
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateSpinners(Z)V

    .line 171
    return-void

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4d -> :sswitch_1
        0x59 -> :sswitch_0
    .end sparse-switch
.end method

.method updateSpinnersImpl(Z)V
    .locals 11
    .param p1, "animation"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 351
    const/4 v7, 0x3

    new-array v5, v7, [I

    iget v7, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    aput v7, v5, v9

    iget v7, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    aput v7, v5, v8

    iget v7, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    const/4 v10, 0x2

    aput v7, v5, v10

    .line 353
    .local v5, "dateFieldIndices":[I
    const/4 v1, 0x1

    .line 354
    .local v1, "allLargerDateFieldsHaveBeenEqualToMinDate":Z
    const/4 v0, 0x1

    .line 355
    .local v0, "allLargerDateFieldsHaveBeenEqualToMaxDate":Z
    sget-object v7, Landroid/support/v17/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    array-length v7, v7

    add-int/lit8 v6, v7, -0x1

    .end local v0    # "allLargerDateFieldsHaveBeenEqualToMaxDate":Z
    .end local v1    # "allLargerDateFieldsHaveBeenEqualToMinDate":Z
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_6

    .line 356
    const/4 v4, 0x0

    .line 357
    .local v4, "dateFieldChanged":Z
    aget v7, v5, v6

    if-gez v7, :cond_0

    .line 355
    .end local v4    # "dateFieldChanged":Z
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 360
    .restart local v4    # "dateFieldChanged":Z
    :cond_0
    sget-object v7, Landroid/support/v17/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    aget v2, v7, v6

    .line 361
    .local v2, "currField":I
    aget v7, v5, v6

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getColumnAt(I)Landroid/support/v17/leanback/widget/picker/PickerColumn;

    move-result-object v3

    .line 363
    .local v3, "currPickerColumn":Landroid/support/v17/leanback/widget/picker/PickerColumn;
    if-eqz v1, :cond_2

    .line 365
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 364
    invoke-static {v3, v7}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v4

    .line 371
    .local v4, "dateFieldChanged":Z
    :goto_2
    if-eqz v0, :cond_3

    .line 373
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 372
    invoke-static {v3, v7}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v7

    or-int/2addr v4, v7

    .line 380
    :goto_3
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v7, v10, :cond_4

    move v7, v8

    .line 379
    :goto_4
    and-int/2addr v1, v7

    .line 382
    .local v1, "allLargerDateFieldsHaveBeenEqualToMinDate":Z
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v7, v10, :cond_5

    move v7, v8

    .line 381
    :goto_5
    and-int/2addr v0, v7

    .line 384
    .local v0, "allLargerDateFieldsHaveBeenEqualToMaxDate":Z
    if-eqz v4, :cond_1

    .line 385
    aget v7, v5, v6

    invoke-virtual {p0, v7, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumnAt(ILandroid/support/v17/leanback/widget/picker/PickerColumn;)V

    .line 387
    :cond_1
    aget v7, v5, v6

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {p0, v7, v10, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumnValue(IIZ)V

    goto :goto_1

    .line 368
    .end local v0    # "allLargerDateFieldsHaveBeenEqualToMaxDate":Z
    .end local v1    # "allLargerDateFieldsHaveBeenEqualToMinDate":Z
    .local v4, "dateFieldChanged":Z
    :cond_2
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v7

    .line 367
    invoke-static {v3, v7}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v4

    .local v4, "dateFieldChanged":Z
    goto :goto_2

    .line 376
    :cond_3
    iget-object v7, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    .line 375
    invoke-static {v3, v7}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v7

    or-int/2addr v4, v7

    goto :goto_3

    :cond_4
    move v7, v9

    .line 380
    goto :goto_4

    .restart local v1    # "allLargerDateFieldsHaveBeenEqualToMinDate":Z
    :cond_5
    move v7, v9

    .line 382
    goto :goto_5

    .line 389
    .end local v1    # "allLargerDateFieldsHaveBeenEqualToMinDate":Z
    .end local v2    # "currField":I
    .end local v3    # "currPickerColumn":Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .end local v4    # "dateFieldChanged":Z
    :cond_6
    return-void
.end method
